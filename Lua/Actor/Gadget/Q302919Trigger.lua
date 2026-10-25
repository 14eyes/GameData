require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302919Trigger = class("Q302919Trigger", GadgetActorProxy)
Q302919Trigger.defaultAlias = "Q302919Trigger"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q302919Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q302919Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302919Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("3029"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("3029")
        actor:CreateQuestNpcById(302919, npcs.PaimonData.id, 3)
        actor:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, true)
end

function Q302919Trigger:TriggerOut()
    print("TriggerOut")
end

return Q302919Trigger
