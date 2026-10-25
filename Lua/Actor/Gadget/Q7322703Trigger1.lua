require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7322703Trigger1 = class("Q7322703Trigger1", GadgetActorProxy)
Q7322703Trigger1.defaultAlias = "Q7322703Trigger1"
local Q73227ClientConfig = require("Quest/Client/Q73227ClientConfig")

local subIDs = Q73227ClientConfig.SubIDs
local npcs = Q73227ClientConfig.Npcs
local datas = Q73227ClientConfig.Datas

function Q7322703Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7322703Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(47.93941, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7322703Trigger1:TriggerIn()
    print("TriggerIn")
    if actorUtils.IsLevelTagValid(39, true) then
        actorUtils.FinishQuestID(false, 7322703)
        self:DestroySelf()
    end
end

function Q7322703Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q7322703Trigger1
