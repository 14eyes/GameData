require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202516Trigger03 = class("Q1202516Trigger03", GadgetActorProxy)
Q1202516Trigger03.defaultAlias = "Q1202516Trigger03"
local Q12025ClientConfig = require("Quest/Client/Q12025ClientConfig")

local subIDs = Q12025ClientConfig.SubIDs
local npcs = Q12025ClientConfig.Npcs
local gadgets = Q12025ClientConfig.Gadgets
local datas = Q12025ClientConfig.Datas

function Q1202516Trigger03:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202516Trigger03:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202516Trigger03:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12025"):FinishQuestID(false, 1202520)
    self:DestroySelf()
end

function Q1202516Trigger03:TriggerOut()
    print("TriggerOut")
end

return Q1202516Trigger03
