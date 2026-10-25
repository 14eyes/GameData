require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger17 = class("Q5026Trigger17", GadgetActorProxy)
Q5026Trigger17.defaultAlias = "Q5026Trigger17"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger17:OnPostDataPrepare()
    print("Q5026Trigger17 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger17:OnPostComponentPrepare()
    print("Q5026Trigger17 - OnPostComponentPrepare")
    this:AddComponentTrigger(17, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger17:TriggerIn()
    print("Q5026Trigger17 - TriggerIn")
    actorMgr:GetActor("5026"):CreateQuestNpcById(502612, npcs.Npc6239.id, 0, false, 0)
    actorMgr:GetActor("5026"):RequestInteraction(npcs.Npc14602.alias, "", true)
    this:DestroySelf()
end

function Q5026Trigger17:PreTriggerIn()
    print("Q5026Trigger17 - PreTriggerIn")
end

function Q5026Trigger17:LightUpTriggerIn()
    print("Q5026Trigger17 - LightUpTriggerIn")
end

function Q5026Trigger17:TriggerOut()
    print("Q5026Trigger17 - TriggerOut")
end

return Q5026Trigger17
