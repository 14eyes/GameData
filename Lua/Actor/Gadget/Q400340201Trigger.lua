require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400340201Trigger = class("Q400340201Trigger", GadgetActorProxy)
Q400340201Trigger.defaultAlias = "Q400340201Trigger"
local Q40034ClientConfig = require("Quest/Client/Q40034ClientConfig")

local subIDs = Q40034ClientConfig.SubIDs
local npcs = Q40034ClientConfig.Npcs
local datas = Q40034ClientConfig.Datas

function Q400340201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q400340201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q400340201Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40034"):NarratorOnlyTask(datas.NarratorTable400340201, nil, "")
    self:DestroySelf()
end

function Q400340201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q400340201Trigger
