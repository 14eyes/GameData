require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4007907Trigger = class("Q4007907Trigger", GadgetActorProxy)
Q4007907Trigger.defaultAlias = "Q4007907Trigger"
local Q40079ClientConfig = require("Quest/Client/Q40079ClientConfig")

local subIDs = Q40079ClientConfig.SubIDs
local npcs = Q40079ClientConfig.Npcs
local datas = Q40079ClientConfig.Datas

function Q4007907Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4007907Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCylinderShapeTrigger(150, 100, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4007907Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4007907)
    self:DestroySelf()
end

function Q4007907Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4007907Trigger
