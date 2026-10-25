require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13008Trigger3 = class("Q13008Trigger3", GadgetActorProxy)
Q13008Trigger3.defaultAlias = "Q13008Trigger3"
local Q13008ClientConfig = require("Quest/Client/Q13008ClientConfig")

local subIDs = Q13008ClientConfig.SubIDs
local npcs = Q13008ClientConfig.Npcs
local datas = Q13008ClientConfig.Datas

function Q13008Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13008Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13008Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13008"):CreateQuestNpcById(1300806, npcs.PaimonData.id, 0)
    globalActor:DisablePaimonInProfilePage({3})
end

function Q13008Trigger3:TriggerOut()
    print("TriggerOut")
    globalActor:ResumePaimonInProfilePage({3})
    local questNpcActor = actorMgr:GetActor("13008"):GetQuestNpcActor(npcs.PaimonData.alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

return Q13008Trigger3
