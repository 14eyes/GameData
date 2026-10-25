require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40011CampTrigger = class("Q40011CampTrigger", GadgetActorProxy)
Q40011CampTrigger.defaultAlias = "Q40011CampTrigger"
local Q40011ClientConfig = require("Quest/Client/Q40011ClientConfig")

local subIDs = Q40011ClientConfig.SubIDs
local npcs = Q40011ClientConfig.Npcs
local gadgets = Q40011ClientConfig.Gadgets
local datas = Q40011ClientConfig.Datas

function Q40011CampTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40011CampTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40011CampTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40011"):FinishQuestID(false, 4001116)
    self:DestroySelf()
end

function Q40011CampTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40011CampTrigger
