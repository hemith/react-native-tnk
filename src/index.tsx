import { NativeModules } from 'react-native';

type TnkType = {
  multiply(a: number, b: number): Promise<number>;
};

const { Tnk } = NativeModules;

export default Tnk as TnkType;
