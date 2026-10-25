require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40012CampTrigger2 = class("Q40012CampTrigger2", GadgetActorProxy)
Q40012CampTrigger2.defaultAlias = "Q40012CampTrigger2"
local Q40012ClientConfig = require("Quest/Client/Q40012ClientConfig")

local subIDs = Q40012ClientConfig.SubIDs
local npcs = Q40012ClientConfig.Npcs
local gadgets = Q40012ClientConfig.Gadgets
local datas = Q40012ClientConfig.Datas

function Q40012CampTrigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40012CampTrigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40012CampTrigger2:TriggerIn()
    print("TriggerIn")
end

function Q40012CampTrigger2:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("40012"):FinishQuestID(true, 4001214)
    self:DestroySelf()
end

return Q40012CampTrigger2
