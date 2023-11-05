const db = require('../config/db'); 

exports.Getdata = async (req, res) => {
  const q1 = 'SELECT * FROM tb_product as tp ';
  const q2 = 'INNER JOIN tb_product_sell as tps ';
  const q3 = 'ON tp.id = tps.brand_name_id ';
  const q4 = 'JOIN tb_product_name as tpn ';
  const q5 = 'ON tps.product_name = tpn.id ';
  const query = q1 + q2 + q3 + q4 + q5;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error retrieving products: ' + err);
      return res.status(500).json({ error: 'An error occurred' });
    }
    res.json(results);
  });
};

exports.GetProductName = async (req,res) =>{
  const q1 = 'SELECT * FROM tb_product as tp ';
  const q2 = 'JOIN tb_product_name as tpn ';
  const q3 = 'ON tp.id = tpn.brand_name_id ';
  const query = q1 + q2 + q3;

  db.query(query, (err, results) => {
    if (err) {
      console.error('Error retrieving products: ' + err);
      return res.status(500).json({ error: 'An error occurred' });
    }
    res.json(results);
  });
};


exports.UpdateData = async (req,res)=>{
    res.send('Hello Update date')
}