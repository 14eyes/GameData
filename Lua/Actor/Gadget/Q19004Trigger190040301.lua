require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19004Trigger190040301 = class("Q19004Trigger190040301", GadgetActorProxy)
Q19004Trigger190040301.defaultAlias = "Q19004Trigger190040301"
local Q19004ClientConfig = require("Quest/Client/Q19004ClientConfig")

local mainID = Q19004ClientConfig.MainID
local actorAlias = Q19004ClientConfig.ActorAlias
local subIDs = Q19004ClientConfig.SubIDs
local npcs = Q19004ClientConfig.Npcs
local datas = Q19004ClientConfig.Datas

function Q19004Trigger190040301:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19004Trigger190040301:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19004Trigger190040301:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor.ShowBlackScreen(actor, 0.2, 0.5, 0, function(arg1)
        actor:GetQuestNpcActor(npcs.PaimonData.alias):ShowSelf()
        actor:RequestInteraction(npcs.PaimonData.alias)
    end, nil, nil)

    self:DestroySelf()
end

function Q19004Trigger190040301:TriggerOut()
    print("TriggerOut")
end

return Q19004Trigger190040301
