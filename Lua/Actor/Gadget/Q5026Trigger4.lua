require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger4 = class("Q5026Trigger4", GadgetActorProxy)
Q5026Trigger4.defaultAlias = "Q5026Trigger4"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger4:OnPostDataPrepare()
    print("Q5026Trigger4 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger4:OnPostComponentPrepare()
    print("Q5026Trigger4 - OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger4:TriggerIn()
    print("Q5026Trigger4 - TriggerIn")
    actorMgr:GetActor("5026"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("5026"):CreateQuestNpcById(502610, npcs.Npc14601.id, 0, false, 0)
        actorMgr:GetActor("5026"):RequestInteraction(npcs.Npc14601.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q5026Trigger4:PreTriggerIn()
    print("Q5026Trigger4 - PreTriggerIn")
end

function Q5026Trigger4:LightUpTriggerIn()
    print("Q5026Trigger4 - LightUpTriggerIn")
end

function Q5026Trigger4:TriggerOut()
    print("Q5026Trigger4 - TriggerOut")
end

return Q5026Trigger4
