require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7216725 = class("Q7216725", GadgetActorProxy)
Q7216725.defaultAlias = "Q7216725"
local Q72167ClientConfig = require("Quest/Client/Q72167ClientConfig")

local subIDs = Q72167ClientConfig.SubIDs
local npcs = Q72167ClientConfig.Npcs
local datas = Q72167ClientConfig.Datas

function Q7216725:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7216725:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q7216725:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("72167"):FinishQuestID(false, 7216725)
    self:DestroySelf()
end

function Q7216725:TriggerOut()
    print("TriggerOut")
end

return Q7216725
