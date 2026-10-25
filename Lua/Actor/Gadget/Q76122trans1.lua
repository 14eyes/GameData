require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76122trans1 = class("Q76122trans1", GadgetActorProxy)
Q76122trans1.defaultAlias = "Q76122trans1"
local Q76122ClientConfig = require("Quest/Client/Q76122ClientConfig")

local this
local subIDs = Q76122ClientConfig.SubIDs
local datas = Q76122ClientConfig.Datas
local npcs = Q76122ClientConfig.Npcs
local points = Q76122ClientConfig.Points

function Q76122trans1:PlayerEnterDungeonWithDataAndSceneID(currSceneID, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    if currSceneID ~= sceneData.currSceneID then
        actorMgr:GetActor("76122"):PlayerEnterDungeonWithData(arg2, arg3, arg4, arg5, arg6, arg7, arg8)
    end
end

function Q76122trans1:OnPostDataPrepare()
    print("Q76122trans1 - OnPostDataPrepare")
    this = self
end

function Q76122trans1:OnPostComponentPrepare()
    print("Q76122trans1 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76122)
end

function Q76122trans1:TriggerIn()
    print("Q76122trans1 - TriggerIn")
    this:DestroySelf()
    this:PlayerEnterDungeonWithDataAndSceneID(20325, 1823, 1298, 7612205, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Q76122trans1:PreTriggerIn()
    print("Q76122trans1 - PreTriggerIn")
end

function Q76122trans1:LightUpTriggerIn()
    print("Q76122trans1 - LightUpTriggerIn")
end

function Q76122trans1:TriggerOut()
    print("Q76122trans1 - TriggerOut")
end

return Q76122trans1
