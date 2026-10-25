require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601514DungeonTrigger = class("Q601514DungeonTrigger", GadgetActorProxy)
Q601514DungeonTrigger.defaultAlias = "Q601514DungeonTrigger"
local Q6015ClientConfig = require("Quest/Client/Q6015ClientConfig")

local this
local subIDs = Q6015ClientConfig.SubIDs
local datas = Q6015ClientConfig.Datas
local npcs = Q6015ClientConfig.Npcs
local points = Q6015ClientConfig.Points

function Q601514DungeonTrigger:PlayerEnterDungeonWithDataAndSceneID(currSceneID, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if currSceneID ~= sceneData.currSceneID then
        actorMgr:GetActor("6015"):PlayerEnterDungeonWithData(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    end
end

function Q601514DungeonTrigger:OnPostDataPrepare()
    print("Q601514DungeonTrigger - OnPostDataPrepare")
    this = self
end

function Q601514DungeonTrigger:OnPostComponentPrepare()
    print("Q601514DungeonTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6015)
end

function Q601514DungeonTrigger:TriggerIn()
    print("Q601514DungeonTrigger - TriggerIn")
    this:PlayerEnterDungeonWithDataAndSceneID(20321, 1, 1291, 601514, 1, datas.TransmitShojoEnter, nil, nil)
    this:DestroySelf()
end

function Q601514DungeonTrigger:PreTriggerIn()
    print("Q601514DungeonTrigger - PreTriggerIn")
end

function Q601514DungeonTrigger:LightUpTriggerIn()
    print("Q601514DungeonTrigger - LightUpTriggerIn")
end

function Q601514DungeonTrigger:TriggerOut()
    print("Q601514DungeonTrigger - TriggerOut")
end

return Q601514DungeonTrigger
