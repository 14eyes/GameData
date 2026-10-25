require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q5026Trigger3 = class("Q5026Trigger3", GadgetActorProxy)
Q5026Trigger3.defaultAlias = "Q5026Trigger3"
local Q5026ClientConfig = require("Quest/Client/Q5026ClientConfig")

local this
local subIDs = Q5026ClientConfig.SubIDs
local datas = Q5026ClientConfig.Datas
local npcs = Q5026ClientConfig.Npcs
local points = Q5026ClientConfig.Points

function Q5026Trigger3:OnPostDataPrepare()
    print("Q5026Trigger3 - OnPostDataPrepare")
    this = self
end

function Q5026Trigger3:OnPostComponentPrepare()
    print("Q5026Trigger3 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 5026)
end

function Q5026Trigger3:TriggerIn()
    print("Q5026Trigger3 - TriggerIn")
    actorMgr:GetActor("5026"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("5026"):CreateQuestNpcById(502611, npcs.Npc1091.id, 0, false, 0)
        actorMgr:GetActor("5026"):RequestInteraction(npcs.Npc1091.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q5026Trigger3:PreTriggerIn()
    print("Q5026Trigger3 - PreTriggerIn")
end

function Q5026Trigger3:LightUpTriggerIn()
    print("Q5026Trigger3 - LightUpTriggerIn")
end

function Q5026Trigger3:TriggerOut()
    print("Q5026Trigger3 - TriggerOut")
end

return Q5026Trigger3
