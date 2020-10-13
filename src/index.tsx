import { NativeModules } from 'react-native';

type TnkType = {
  multiply(a: number, b: number): Promise<number>;
  addEvent(a: string, b: string): void;
  applicationStarted(a: string): void;
  actionCompleted(a: string): void;
};

const { Tnk } = NativeModules;

export default Tnk as TnkType;
