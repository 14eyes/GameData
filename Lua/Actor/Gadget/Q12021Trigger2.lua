require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12021Trigger2 = class("Q12021Trigger2", GadgetActorProxy)
Q12021Trigger2.defaultAlias = "Q12021Trigger2"
local Q12021ClientConfig = require("Quest/Client/Q12021ClientConfig")

local subIDs = Q12021ClientConfig.SubIDs
local npcs = Q12021ClientConfig.Npcs
local datas = Q12021ClientConfig.Datas

function Q12021Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q12021Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(55, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q12021Trigger2:TriggerIn()
    print("TriggerIn")
end

function Q12021Trigger2:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("12021"):FinishQuestID(true, 1202103)
    self:DestroySelf()
end

return Q12021Trigger2
