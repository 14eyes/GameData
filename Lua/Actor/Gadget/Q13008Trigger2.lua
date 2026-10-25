require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13008Trigger2 = class("Q13008Trigger2", GadgetActorProxy)
Q13008Trigger2.defaultAlias = "Q13008Trigger2"
local Q13008ClientConfig = require("Quest/Client/Q13008ClientConfig")

local this
local subIDs = Q13008ClientConfig.SubIDs
local npcs = Q13008ClientConfig.Npcs
local datas = Q13008ClientConfig.Datas

function Q13008Trigger2:OnPostDataPrepare()
    print("[MainId: 13008][Trigger: Q13008Trigger2] OnPostDataPrepare")
    this = self
end

function Q13008Trigger2:OnPostComponentPrepare()
    print("[MainId: 13008][Trigger: Q13008Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13008Trigger2:TriggerIn()
    print("[MainId: 13008][Trigger: Q13008Trigger2] TriggerIn")
    actorMgr:GetActor("13008"):CreateQuestNpcById(1300804, npcs.PaimonData.id, 0)
    globalActor:DisablePaimonInProfilePage({3})
end

function Q13008Trigger2:TriggerOut()
    print("[MainId: 13008][Trigger: Q13008Trigger2] TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
    local questNpcActor = actorMgr:GetActor("13008"):GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

return Q13008Trigger2
