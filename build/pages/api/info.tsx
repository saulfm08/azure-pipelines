export default (req, res) => {
  res.status(200).json({
    HOME: `${process.env.HOME}`,
    LANG: `${process.env.LANG}`,
    PATH: `${process.env.PATH}`,
    SHELL: `${process.env.SHELL}`,
    USER: `${process.env.USER}`,
    USERNAME: `${process.env.USERNAME}`,
    TERM: `${process.env.TERM}`,
  })
}
