import { NativeModules } from 'react-native';

type TnkType = {
  multiply(a: number, b: number): Promise<number>;
  addEvent(a: string, b: string): void;
};

const { Tnk } = NativeModules;

export default Tnk as TnkType;
