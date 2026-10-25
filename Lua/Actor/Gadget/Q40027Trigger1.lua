require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40027Trigger1 = class("Q40027Trigger1", GadgetActorProxy)
Q40027Trigger1.defaultAlias = "Q40027Trigger1"
local Q40027ClientConfig = require("Quest/Client/Q40027ClientConfig")

local subIDs = Q40027ClientConfig.SubIDs
local npcs = Q40027ClientConfig.Npcs
local gadgets = Q40027ClientConfig.Gadgets
local datas = Q40027ClientConfig.Datas

function Q40027Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40027Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q40027Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40027"):FinishQuestID(false, 4002702)
    self:DestroySelf()
end

function Q40027Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q40027Trigger1
