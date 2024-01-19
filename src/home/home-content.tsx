import {Grid, Typography} from "@mui/material";


export default function HomeContent() {
    return (
        <>
            <Typography variant='h2' align='center' color="textPrimary" gutterBottom>
                WDD Album
            </Typography>
            <Typography variant="h5" align="center" color="textSecondary" paragraph>
                Hello Everyone This is a gallery about WDD code using React+Vite+Mui+Typescript
            </Typography>
            <Grid container spacing="3" justifyContent="center">
                <Grid item></Grid>
            </Grid>
        </>
    )
}

