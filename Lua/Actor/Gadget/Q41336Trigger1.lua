require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41336Trigger1 = class("Q41336Trigger1", GadgetActorProxy)
Q41336Trigger1.defaultAlias = "Q41336Trigger1"
local Q41336ClientConfig = require("Quest/Client/Q41336ClientConfig")

local mainID = Q41336ClientConfig.MainID
local actorAlias = Q41336ClientConfig.ActorAlias
local subIDs = Q41336ClientConfig.SubIDs
local npcs = Q41336ClientConfig.Npcs
local datas = Q41336ClientConfig.Datas

function Q41336Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41336Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddQuestComponentTrigger(41336, 3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41336Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):ShowBlackScreen(0.5, 2, 0.5, self.CreateLinLin01, nil, nil, "")
    self:DestroySelf()
end

function Q41336Trigger1:TriggerOut()
    print("TriggerOut")
end

function Q41336Trigger1:CreateLinLin01()
    print("CreateLinLin01")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(4133604, npcs.Npc201701Data.id, 1)
    actor:RequestInteraction(npcs.Npc201701Data.alias)
end

return Q41336Trigger1
