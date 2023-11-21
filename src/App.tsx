import {AppBar, Button, Container, CssBaseline, Grid, Toolbar, Typography} from "@mui/material"
import {PhotoCamera} from "@mui/icons-material";

function App() {
    return (
        <>
            <CssBaseline>
                <AppBar position="relative">
                    <Toolbar>
                        <PhotoCamera/>
                        <Typography variant='h6'>WDD React Vite Typescript</Typography>
                    </Toolbar>
                </AppBar>
                <main>
                    <div>
                        <Container maxWidth='sm'>
                            <Typography variant='h2' align='center' color="textPrimary" gutterBottom >
                                WDD Album
                            </Typography>

                            <Typography variant="h5" align="center" color="textSecondary" paragraph>
                                Hello Everyone This is a gallery about WDD code using React+Vite+Mui+Typescript
                            </Typography>
                            <Grid container spacing="2" justifyContent="center">
                                <Grid item>
                                    <Button variant="contained" color="primary">
                                        See my photos
                                    </Button>
                                </Grid>
                                <Grid item>
                                    <Button variant="contained" color="secondary">
                                        Secondary Button
                                    </Button>
                                </Grid>
                            </Grid>

                        </Container>
                    </div>
                </main>
            </CssBaseline>
        </>
    )
}

export default App
