require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41336Trigger3 = class("Q41336Trigger3", GadgetActorProxy)
Q41336Trigger3.defaultAlias = "Q41336Trigger3"
local Q41336ClientConfig = require("Quest/Client/Q41336ClientConfig")

local mainID = Q41336ClientConfig.MainID
local actorAlias = Q41336ClientConfig.ActorAlias
local subIDs = Q41336ClientConfig.SubIDs
local npcs = Q41336ClientConfig.Npcs
local datas = Q41336ClientConfig.Datas

function Q41336Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41336Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddQuestComponentTrigger(41336, 1.5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41336Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):ShowBlackScreen(0.5, 1, 0.5, self.CreateLinLin03, nil, nil, "")
    self:DestroySelf()
end

function Q41336Trigger3:TriggerOut()
    print("TriggerOut")
end

function Q41336Trigger3:CreateLinLin03()
    print("CreateLinLin03")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(4133608, npcs.Npc201701Data.id, 1)
    actor:RequestInteraction(npcs.Npc201701Data.alias)
end

return Q41336Trigger3
