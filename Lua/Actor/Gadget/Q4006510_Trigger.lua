require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4006510_Trigger = class("Q4006510_Trigger", GadgetActorProxy)
Q4006510_Trigger.defaultAlias = "Q4006510_Trigger"
local Q40065ClientConfig = require("Quest/Client/Q40065ClientConfig")

local subIDs = Q40065ClientConfig.SubIDs
local npcs = Q40065ClientConfig.Npcs
local gadgets = Q40065ClientConfig.Gadgets
local datas = Q40065ClientConfig.Datas

function Q4006510_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4006510_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddCubeShapeTrigger(5.54221, 10.01772, 9.033957, false, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q4006510_Trigger:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 4006510)
    self:DestroySelf()
end

function Q4006510_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4006510_Trigger
