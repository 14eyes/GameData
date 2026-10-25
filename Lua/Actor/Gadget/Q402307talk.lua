require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q402307talk = class("Q402307talk", GadgetActorProxy)
Q402307talk.defaultAlias = "Q402307talk"
local Q4023ClientConfig = require("Quest/Client/Q4023ClientConfig")

local this
local subIDs = Q4023ClientConfig.SubIDs
local npcs = Q4023ClientConfig.Npcs
local points = Q4023ClientConfig.Points

function Q402307talk:OnPostDataPrepare()
    print("[MainId: 4023][Trigger: Q402307talk] OnPostDataPrepare")
    this = self
end

function Q402307talk:OnPostComponentPrepare()
    print("[MainId: 4023][Trigger: Q402307talk] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q402307talk:TriggerIn()
    print("[MainId: 4023][Trigger: Q402307talk] TriggerIn")
end

function Q402307talk:PreTriggerIn()
    print("[MainId: 4023][Trigger: Q402307talk] PreTriggerIn")
end

function Q402307talk:LightUpTriggerIn()
    print("[MainId: 4023][Trigger: Q402307talk] LightUpTriggerIn")
    actorMgr:GetActor("4023"):ShowBlackScreen(0, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("4023")
        actor:CreateQuestNpcById(402307, npcs.PaimonData.id, 0)
        actor:RequestInteraction(npcs.PaimonData.alias, "", true)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q402307talk:TriggerOut()
    print("[MainId: 4023][Trigger: Q402307talk] TriggerOut")
end

return Q402307talk
