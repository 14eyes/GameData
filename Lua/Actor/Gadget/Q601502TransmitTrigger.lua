require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601502TransmitTrigger = class("Q601502TransmitTrigger", GadgetActorProxy)
Q601502TransmitTrigger.defaultAlias = "Q601502TransmitTrigger"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601502TransmitTrigger:PlayerEnterDungeonWithDataAndSceneID(currSceneID, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if currSceneID ~= sceneData.currSceneID then
        actorMgr:GetActor("6015"):PlayerEnterDungeonWithData(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    end
end

function Q601502TransmitTrigger:OnPostDataPrepare()
    print("Q601502TransmitTrigger - OnPostDataPrepare")
    this = self
end

function Q601502TransmitTrigger:OnPostComponentPrepare()
    print("Q601502TransmitTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601502TransmitTrigger:TriggerIn()
    print("Q601502TransmitTrigger - TriggerIn")
    this:PlayerEnterDungeonWithDataAndSceneID(0, 1, 1291, 601502, 1, datas.PlayerEnterDungeonDataShojoIn, nil, nil)
    this:DestroySelf()
end

function Q601502TransmitTrigger:PreTriggerIn()
    print("Q601502TransmitTrigger - PreTriggerIn")
end

function Q601502TransmitTrigger:LightUpTriggerIn()
    print("Q601502TransmitTrigger - LightUpTriggerIn")
end

function Q601502TransmitTrigger:TriggerOut()
    print("Q601502TransmitTrigger - TriggerOut")
end

return Q601502TransmitTrigger
