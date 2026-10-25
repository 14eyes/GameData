require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40012CampTrigger = class("Q40012CampTrigger", GadgetActorProxy)
Q40012CampTrigger.defaultAlias = "Q40012CampTrigger"
local Q40012ClientConfig = require("Quest/Client/Q40012ClientConfig")

local subIDs = Q40012ClientConfig.SubIDs
local npcs = Q40012ClientConfig.Npcs
local gadgets = Q40012ClientConfig.Gadgets
local datas = Q40012ClientConfig.Datas

function Q40012CampTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40012CampTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40012CampTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40012"):FinishQuestID(false, 4001215)
    self:DestroySelf()
end

function Q40012CampTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40012CampTrigger
