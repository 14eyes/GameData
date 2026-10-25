require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local TalkTrigger = class("TalkTrigger", GadgetActorProxy)
TalkTrigger.defaultAlias = "TalkTrigger"
local Q72661ClientConfig = require("Quest/Client/Q72661ClientConfig")

local subIDs = Q72661ClientConfig.SubIDs
local npcs = Q72661ClientConfig.Npcs
local datas = Q72661ClientConfig.Datas

function TalkTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function TalkTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function TalkTrigger:TriggerIn()
    print("TriggerIn")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("72661")
        actor:CreateQuestNpcById(7266106, npcs.PaimonData.id, 0)
        actor:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil, "", false, false)
end

function TalkTrigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return TalkTrigger
