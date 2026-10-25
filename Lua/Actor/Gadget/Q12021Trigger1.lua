require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12021Trigger1 = class("Q12021Trigger1", GadgetActorProxy)
Q12021Trigger1.defaultAlias = "Q12021Trigger1"
local Q12021ClientConfig = require("Quest/Client/Q12021ClientConfig")

local subIDs = Q12021ClientConfig.SubIDs
local npcs = Q12021ClientConfig.Npcs
local datas = Q12021ClientConfig.Datas

function Q12021Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12021Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12021Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12021"):FinishQuestID(false, 1202119)
end

function Q12021Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q12021Trigger1
