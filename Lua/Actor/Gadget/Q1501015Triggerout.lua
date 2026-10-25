require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1501015Triggerout = class("Q1501015Triggerout", GadgetActorProxy)
Q1501015Triggerout.defaultAlias = "Q1501015Triggerout"
local Q15010ClientConfig = require("Quest/Client/Q15010ClientConfig")

local this
local subIDs = Q15010ClientConfig.SubIDs
local datas = Q15010ClientConfig.Datas
local npcs = Q15010ClientConfig.Npcs
local points = Q15010ClientConfig.Points

function Q1501015Triggerout:OnPostDataPrepare()
    print("Q1501015Triggerout - OnPostDataPrepare")
    this = self
end

function Q1501015Triggerout:OnPostComponentPrepare()
    print("Q1501015Triggerout - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15010)
end

function Q1501015Triggerout:TriggerIn()
    print("Q1501015Triggerout - TriggerIn")
end

function Q1501015Triggerout:PreTriggerIn()
    print("Q1501015Triggerout - PreTriggerIn")
end

function Q1501015Triggerout:LightUpTriggerIn()
    print("Q1501015Triggerout - LightUpTriggerIn")
end

function Q1501015Triggerout:TriggerOut()
    print("Q1501015Triggerout - TriggerOut")
    actorMgr:GetActor("15010"):GetQuestNpcActor(npcs.Npc1087.alias, 15010):DestroyWithDitherEx(0.5)
    this:DestroySelf()
end

return Q1501015Triggerout
