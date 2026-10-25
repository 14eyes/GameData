require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger2 = class("Q5026Trigger2", GadgetActorProxy)
Q5026Trigger2.defaultAlias = "Q5026Trigger2"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger2:OnPostDataPrepare()
    print("Q5026Trigger2 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger2:OnPostComponentPrepare()
    print("Q5026Trigger2 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger2:TriggerIn()
    print("Q5026Trigger2 - TriggerIn")
    actorMgr:GetActor("5026"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("5026"):CreateQuestNpcById(502608, 14601, 0, false, 0)
        actorMgr:GetActor("5026"):CreateQuestNpcById(502608, npcs.Npc14698.id, 0, false, 0)
        actorMgr:GetActor("5026"):CreateQuestNpcById(502608, npcs.Npc1091.id, 0, false, 0)
        actorMgr:GetActor("5026"):RequestInteraction(npcs.Npc14601.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q5026Trigger2:PreTriggerIn()
    print("Q5026Trigger2 - PreTriggerIn")
end

function Q5026Trigger2:LightUpTriggerIn()
    print("Q5026Trigger2 - LightUpTriggerIn")
end

function Q5026Trigger2:TriggerOut()
    print("Q5026Trigger2 - TriggerOut")
end

return Q5026Trigger2
