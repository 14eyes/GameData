require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40036Trigger1 = class("Q40036Trigger1", GadgetActorProxy)
Q40036Trigger1.defaultAlias = "Q40036Trigger1"
local Q40036ClientConfig = require("Quest/Client/Q40036ClientConfig")

local subIDs = Q40036ClientConfig.SubIDs
local npcs = Q40036ClientConfig.Npcs
local gadgets = Q40036ClientConfig.Gadgets
local datas = Q40036ClientConfig.Datas

function Q40036Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40036Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40036Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40036"):FinishQuestID(false, 4003613)
    self:DestroySelf()
end

function Q40036Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q40036Trigger1
