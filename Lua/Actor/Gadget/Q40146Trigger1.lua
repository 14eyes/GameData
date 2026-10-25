require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40146Trigger1 = class("Q40146Trigger1", GadgetActorProxy)
Q40146Trigger1.defaultAlias = "Q40146Trigger1"
local Q40146ClientConfig = require("Quest/Client/Q40146ClientConfig")

local this
local subIDs = Q40146ClientConfig.SubIDs
local npcs = Q40146ClientConfig.Npcs
local points = Q40146ClientConfig.Points
local datas = Q40146ClientConfig.Datas

function Q40146Trigger1:OnPostDataPrepare()
    print("[MainId: 40146][Trigger: Q40146Trigger1] OnPostDataPrepare")
    this = self
end

function Q40146Trigger1:OnPostComponentPrepare()
    print("[MainId: 40146][Trigger: Q40146Trigger1] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q40146Trigger1:TriggerIn()
    print("[MainId: 40146][Trigger: Q40146Trigger1] TriggerIn")
    actorMgr:GetActor("40146"):ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40146")
        actor:CreateQuestNpcById(4014602, npcs.Npc30501Data.id, 0)
        actor:RequestInteraction(npcs.Npc30501Data.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q40146Trigger1:PreTriggerIn()
    print("[MainId: 40146][Trigger: Q40146Trigger1] PreTriggerIn")
end

function Q40146Trigger1:LightUpTriggerIn()
    print("[MainId: 40146][Trigger: Q40146Trigger1] LightUpTriggerIn")
end

function Q40146Trigger1:TriggerOut()
    print("[MainId: 40146][Trigger: Q40146Trigger1] TriggerOut")
end

return Q40146Trigger1
