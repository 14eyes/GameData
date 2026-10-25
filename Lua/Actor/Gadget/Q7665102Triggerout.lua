require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7665102Triggerout = class("Q7665102Triggerout", GadgetActorProxy)
Q7665102Triggerout.defaultAlias = "Q7665102Triggerout"
local Q76651ClientConfig = require("Quest/Client/Q76651ClientConfig")

local this
local subIDs = Q76651ClientConfig.SubIDs
local datas = Q76651ClientConfig.Datas
local npcs = Q76651ClientConfig.Npcs
local points = Q76651ClientConfig.Points

function Q7665102Triggerout:NpcDestroyImmediately(arg1, arg2)
    actorMgr:GetActor("76651"):DestroyQuestNpcActor(arg2, arg1)
end

function Q7665102Triggerout:OnPostDataPrepare()
    print("Q7665102Triggerout - OnPostDataPrepare")
    this = self
end

function Q7665102Triggerout:OnPostComponentPrepare()
    print("Q7665102Triggerout - OnPostComponentPrepare")
    this:AddComponentTrigger(90, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76651)
end

function Q7665102Triggerout:TriggerIn()
    print("Q7665102Triggerout - TriggerIn")
end

function Q7665102Triggerout:PreTriggerIn()
    print("Q7665102Triggerout - PreTriggerIn")
end

function Q7665102Triggerout:LightUpTriggerIn()
    print("Q7665102Triggerout - LightUpTriggerIn")
end

function Q7665102Triggerout:TriggerOut()
    print("Q7665102Triggerout - TriggerOut")
    this:NpcDestroyImmediately(3, npcs.Npc15558.alias)
    this:DestroySelf()
end

return Q7665102Triggerout
