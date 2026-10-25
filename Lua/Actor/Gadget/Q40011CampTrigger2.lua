require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40011CampTrigger2 = class("Q40011CampTrigger2", GadgetActorProxy)
Q40011CampTrigger2.defaultAlias = "Q40011CampTrigger2"
local Q40011ClientConfig = require("Quest/Client/Q40011ClientConfig")

local subIDs = Q40011ClientConfig.SubIDs
local npcs = Q40011ClientConfig.Npcs
local gadgets = Q40011ClientConfig.Gadgets
local datas = Q40011ClientConfig.Datas

function Q40011CampTrigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40011CampTrigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40011CampTrigger2:TriggerIn()
    print("TriggerIn")
end

function Q40011CampTrigger2:TriggerOut()
    print("TriggerOut")
    actorMgr:GetActor("40011"):FinishQuestID(true, 4001115)
    self:DestroySelf()
end

return Q40011CampTrigger2
