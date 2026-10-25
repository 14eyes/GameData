require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73507Trigger1 = class("Q73507Trigger1", GadgetActorProxy)
Q73507Trigger1.defaultAlias = "Q73507Trigger1"
local Q73507ClientConfig = require("Quest/Client/Q73507ClientConfig")

local this
local subIDs = Q73507ClientConfig.SubIDs
local npcs = Q73507ClientConfig.Npcs
local datas = Q73507ClientConfig.Datas

function Q73507Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q73507Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q73507Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73507"):CreateQuestNpcById(7350706, npcs.PaimonData.id, 0)
    globalActor:DisablePaimonInProfilePage({3})
end

function Q73507Trigger1:PreTriggerIn()
    print("PreTriggerIn")
end

function Q73507Trigger1:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q73507Trigger1:TriggerOut()
    print("TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
    local questNpcActor = actorMgr:GetActor("73507"):GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil and questNpcActor ~= 0 then
        questNpcActor:DestroyWithDisappear(false)
    end
end

return Q73507Trigger1
