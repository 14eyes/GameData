require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302817_TriggerIn = class("Q302817_TriggerIn", GadgetActorProxy)
Q302817_TriggerIn.defaultAlias = "Q302817_TriggerIn"
local Q3028ClientConfig = require("Quest/Client/Q3028ClientConfig")

local this
local subIDs = Q3028ClientConfig.SubIDs
local npcs = Q3028ClientConfig.Npcs
local datas = Q3028ClientConfig.Datas

function Q302817_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302817_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(45, 30, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302817_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3028"):PlayerEnterDungeonPointWithDialogs(9, 1165, 302817, 0, nil, 0, nil, nil)
    this:DestroySelf()
end

function Q302817_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302817_TriggerIn
