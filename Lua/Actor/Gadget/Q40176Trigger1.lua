require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40176Trigger1 = class("Q40176Trigger1", GadgetActorProxy)
Q40176Trigger1.defaultAlias = "Q40176Trigger1"
local Q40176ClientConfig = require("Quest/Client/Q40176ClientConfig")

local this
local subIDs = Q40176ClientConfig.SubIDs
local npcs = Q40176ClientConfig.Npcs
local points = Q40176ClientConfig.Points

function Q40176Trigger1:OnPostDataPrepare()
    print("Q40176Trigger1 - OnPostDataPrepare")
    this = self
end

function Q40176Trigger1:OnPostComponentPrepare()
    print("Q40176Trigger1 - OnPostComponentPrepare")
    this:AddComponentTrigger(80, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40176)
end

function Q40176Trigger1:TriggerIn()
    print("Q40176Trigger1 - TriggerIn")
end

function Q40176Trigger1:PreTriggerIn()
    print("Q40176Trigger1 - PreTriggerIn")
end

function Q40176Trigger1:LightUpTriggerIn()
    print("Q40176Trigger1 - LightUpTriggerIn")
end

function Q40176Trigger1:TriggerOut()
    print("Q40176Trigger1 - TriggerOut")
    actorUtils.FinishQuestID(false, 4017601)
    actorMgr:GetActor("40176"):DestroyQuestNpcActor(npcs.Npc1096.alias, 3)
    actorMgr:GetActor("40176"):RemoveLocalGadget(73015011, "1")
    this:DestroySelf()
end

return Q40176Trigger1
