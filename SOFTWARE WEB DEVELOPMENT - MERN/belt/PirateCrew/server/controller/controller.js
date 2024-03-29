const Pirate = require("../model/model");

module.exports.findAllPirates = (req, res) => {
  Pirate.find({}).sort({ name: 1 })
    .then(allDaPirates => res.json(allDaPirates))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
};
module.exports.findCaptain = (req, res) => {
  Pirate.find({ position: "Captain" })
    .then(captainPirates => res.json(captainPirates))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
};

module.exports.findOneSinglePirate = (req, res) => {
  Pirate.findOne({ _id: req.params.id })
    .then(oneSinglePirate => res.json(oneSinglePirate))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
};

module.exports.createNewPirate = (req, res) => {
  Pirate.create(req.body)
    .then(newlyCreatedPirate => res.json({ Pirate: newlyCreatedPirate }))
    .catch(err => res.status(400).json(err));
};

module.exports.updateExistingPirate = (req, res) => {
  Pirate.findOneAndUpdate({ _id: req.params.id }, req.body, { runValidators: true })
    .then(updatedPirate => res.json({ Pirate: updatedPirate }))
    .catch(err => res.status(400).json(err));
};

module.exports.deleteAnExistingPirate = (req, res) => {
  Pirate.deleteOne({ _id: req.params.id })
    .then(result => res.json({ result: result }))
    .catch(err => res.json({ message: "Something went wrong", error: err }));
};


//user
// const user = require("../model/user.model");

// module.exports.findAllUsers = (req, res) => {
//   Pirate.find({})
//     .then(allDaUsers => res.json(allDaUsers))
//     .catch(err => res.json({ message: "Something went wrong", error: err }));
// };

// module.exports.findOneSingleUser = (req, res) => {
//   Pirate.findOne({ _id: req.params.iddd })
//     .then(oneSingleUser => res.json(oneSingleUser))
//     .catch(err => res.json({ message: "Something went wrong", error: err }));
// };

// module.exports.createNewUser = (req, res) => {
//   Pirate.create(req.body)
//     .then(newlyCreatedUser => res.json({ user: newlyCreatedUser }))
//     .catch(err => res.status(400).json(err));
// };

// module.exports.updateExistingUser = (req, res) => {
//   Pirate.findOneAndUpdate({ _id: req.params.id }, req.body, { runValidators: true })
//     .then(updatedUser => res.json({ user: updatedUser }))
//     .catch(err => res.status(400).json(err));
// };

// module.exports.deleteAnExistingUser = (req, res) => {
//   Pirate.deleteOne({ _id: req.params.id })
//     .then(result => res.json({ result: result }))
//     .catch(err => res.json({ message: "Something went wrong", error: err }));
// };

// register: (req, res) => {
//   Pirate.create(req.body)
//     .then(user => {
//       res.json({ msg: "success!", user: user });
//     })
//     .catch(err => res.json(err));
// }

