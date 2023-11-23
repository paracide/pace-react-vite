import {AppBar, Container, CssBaseline, Toolbar, Typography} from "@mui/material"
import {PhotoCamera} from "@mui/icons-material";
import HomeContent from "./home/home-content.tsx";

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
                            <HomeContent/>
                        </Container>
                    </div>
                </main>
            </CssBaseline>
        </>
    )
}

export default App
