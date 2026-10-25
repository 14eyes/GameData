require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13011Trigger1 = class("Q13011Trigger1", GadgetActorProxy)
Q13011Trigger1.defaultAlias = "Q13011Trigger1"
local Q13011ClientConfig = require("Quest/Client/Q13011ClientConfig")

local subIDs = Q13011ClientConfig.SubIDs
local npcs = Q13011ClientConfig.Npcs
local datas = Q13011ClientConfig.Datas

function Q13011Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13011Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13011Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 1301111)
    self:DestroySelf()
end

function Q13011Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q13011Trigger1
