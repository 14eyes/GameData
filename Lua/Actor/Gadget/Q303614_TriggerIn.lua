require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303614_TriggerIn = class("Q303614_TriggerIn", GadgetActorProxy)
Q303614_TriggerIn.defaultAlias = "Q303614_TriggerIn"
local Q3036ClientConfig = require("Quest/Client/Q3036ClientConfig")

local this
local subIDs = Q3036ClientConfig.SubIDs
local datas = Q3036ClientConfig.Datas
local npcs = Q3036ClientConfig.Npcs
local points = Q3036ClientConfig.Points

function Q303614_TriggerIn:OnPostDataPrepare()
    print("Q303614_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303614_TriggerIn:OnPostComponentPrepare()
    print("Q303614_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3036)
end

function Q303614_TriggerIn:TriggerIn()
    print("Q303614_TriggerIn - TriggerIn")
    actorMgr:GetActor("3036"):PlayerEnterDungeonWithData(1, 1314, 303614, 1, datas.PlayerEnterDungeonData_Q303614, nil, nil)
    this:DestroySelf()
end

function Q303614_TriggerIn:PreTriggerIn()
    print("Q303614_TriggerIn - PreTriggerIn")
end

function Q303614_TriggerIn:LightUpTriggerIn()
    print("Q303614_TriggerIn - LightUpTriggerIn")
end

function Q303614_TriggerIn:TriggerOut()
    print("Q303614_TriggerIn - TriggerOut")
end

return Q303614_TriggerIn
