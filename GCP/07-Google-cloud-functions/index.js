/**
 * Responds to any HTTP Request.
 * 
 * @param {!express:Request} req HTTP request context.
 * @param {!express:Response} req HTTP response context.
 */

exports.helloWorldtf = (req, res) => {
    let message = req.query.message || req.body.message || 'Hello World! from terraform';
    res.status(200).send(message)
};