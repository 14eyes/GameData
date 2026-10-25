require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40196Trigger3 = class("Q40196Trigger3", GadgetActorProxy)
Q40196Trigger3.defaultAlias = "Q40196Trigger3"
local Q40196ClientConfig = require("Quest/Client/Q40196ClientConfig")

local this
local subIDs = Q40196ClientConfig.SubIDs
local datas = Q40196ClientConfig.Datas
local npcs = Q40196ClientConfig.Npcs
local points = Q40196ClientConfig.Points

function Q40196Trigger3:OnPostDataPrepare()
    print("Q40196Trigger3 - OnPostDataPrepare")
    this = self
end

function Q40196Trigger3:OnPostComponentPrepare()
    print("Q40196Trigger3 - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40196)
end

function Q40196Trigger3:TriggerIn()
    print("Q40196Trigger3 - TriggerIn")
    actorMgr:GetActor("40196"):CreateQuestNpcById(4019604, npcs.Paimon.id, 0, false, 0)
    actorMgr:GetActor("40196"):GetQuestNpcActor(npcs.Paimon.alias, 40196):DisableInteeHeadCtrl(true)
    actorMgr:GetActor("40196"):GetQuestNpcActor(npcs.Paimon.alias, 40196):DoFreeStyle(1230, true, nil, true, true, false, false)
    globalActor:DisablePaimonInProfilePage(datas.SceneIDList)
end

function Q40196Trigger3:PreTriggerIn()
    print("Q40196Trigger3 - PreTriggerIn")
end

function Q40196Trigger3:LightUpTriggerIn()
    print("Q40196Trigger3 - LightUpTriggerIn")
end

function Q40196Trigger3:TriggerOut()
    print("Q40196Trigger3 - TriggerOut")
    actorMgr:GetActor("40196"):GetQuestNpcActor(npcs.Paimon.alias, 40196):DestroyWithDisappear(false, nil)
    globalActor:ResumePaimonInProfilePage(datas.SceneIDList)
end

return Q40196Trigger3
