require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302814_TriggerIn = class("Q302814_TriggerIn", GadgetActorProxy)
Q302814_TriggerIn.defaultAlias = "Q302814_TriggerIn"
local Q3028ClientConfig = require("Quest/Client/Q3028ClientConfig")

local this
local subIDs = Q3028ClientConfig.SubIDs
local npcs = Q3028ClientConfig.Npcs
local datas = Q3028ClientConfig.Datas

function Q302814_TriggerIn:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302814_TriggerIn:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(100, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302814_TriggerIn:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3028"):PlayerEnterDungeonPointWithDialogs(5, 1161, 302814, 0, nil, 0, nil, nil)
    this:DestroySelf()
end

function Q302814_TriggerIn:TriggerOut()
    print("TriggerOut")
end

return Q302814_TriggerIn
