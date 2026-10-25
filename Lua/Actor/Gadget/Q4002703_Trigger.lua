require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4002703_Trigger = class("Q4002703_Trigger", GadgetActorProxy)
Q4002703_Trigger.defaultAlias = "Q4002703_Trigger"
local Q40027ClientConfig = require("Quest/Client/Q40027ClientConfig")

local subIDs = Q40027ClientConfig.SubIDs
local npcs = Q40027ClientConfig.Npcs
local gadgets = Q40027ClientConfig.Gadgets
local datas = Q40027ClientConfig.Datas

function Q4002703_Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q4002703_Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q4002703_Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40027"):FinishQuestID(false, 4002703)
    self:DestroySelf()
end

function Q4002703_Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4002703_Trigger
