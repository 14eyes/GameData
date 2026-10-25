require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502101Trigger_1 = class("Q1502101Trigger_1", GadgetActorProxy)
Q1502101Trigger_1.defaultAlias = "Q1502101Trigger_1"
local Q15021ClientConfig = require("Quest/Client/Q15021ClientConfig")

local this
local subIDs = Q15021ClientConfig.SubIDs
local datas = Q15021ClientConfig.Datas
local npcs = Q15021ClientConfig.Npcs
local points = Q15021ClientConfig.Points

function Q1502101Trigger_1:OnPostDataPrepare()
    print("Q1502101Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1502101Trigger_1:OnPostComponentPrepare()
    print("Q1502101Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(18, 40, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15021)
end

function Q1502101Trigger_1:TriggerIn()
    print("Q1502101Trigger_1 - TriggerIn")
    actorMgr:GetActor("15021"):RequestInteraction(npcs.Npc1092.alias, nil, true)
    this:DestroySelf()
end

function Q1502101Trigger_1:PreTriggerIn()
    print("Q1502101Trigger_1 - PreTriggerIn")
end

function Q1502101Trigger_1:LightUpTriggerIn()
    print("Q1502101Trigger_1 - LightUpTriggerIn")
end

function Q1502101Trigger_1:TriggerOut()
    print("Q1502101Trigger_1 - TriggerOut")
end

return Q1502101Trigger_1
