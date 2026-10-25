require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7228115Trigger1 = class("Q7228115Trigger1", GadgetActorProxy)
Q7228115Trigger1.defaultAlias = "Q7228115Trigger1"
local Q72281ClientConfig = require("Quest/Client/Q72281ClientConfig")

local subIDs = Q72281ClientConfig.SubIDs
local npcs = Q72281ClientConfig.Npcs
local datas = Q72281ClientConfig.Datas

function Q7228115Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7228115Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7228115Trigger1:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7228115)
    self:DestroySelf()
end

function Q7228115Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q7228115Trigger1
