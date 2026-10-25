require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7111512Trigger = class("Q7111512Trigger", GadgetActorProxy)
Q7111512Trigger.defaultAlias = "Q7111512Trigger"
local Q71115ClientConfig = require("Quest/Client/Q71115ClientConfig")

local this
local subIDs = Q71115ClientConfig.SubIDs
local npcs = Q71115ClientConfig.Npcs
local points = Q71115ClientConfig.Points
local datas = Q71115ClientConfig.Datas

function Q7111512Trigger:OnPostDataPrepare()
    print("[MainId: 71115][Trigger: Q7111512Trigger] OnPostDataPrepare")
    this = self
end

function Q7111512Trigger:OnPostComponentPrepare()
    print("[MainId: 71115][Trigger: Q7111512Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71115)
end

function Q7111512Trigger:TriggerIn()
    print("[MainId: 71115][Trigger: Q7111512Trigger] TriggerIn")
end

function Q7111512Trigger:PreTriggerIn()
    print("[MainId: 71115][Trigger: Q7111512Trigger] PreTriggerIn")
end

function Q7111512Trigger:LightUpTriggerIn()
    print("[MainId: 71115][Trigger: Q7111512Trigger] LightUpTriggerIn")
    actorMgr:GetActor("71115"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        actorMgr:GetActor("71115"):RequestInteraction(npcs.Npc21344Data.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q7111512Trigger:TriggerOut()
    print("[MainId: 71115][Trigger: Q7111512Trigger] TriggerOut")
end

return Q7111512Trigger
