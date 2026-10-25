require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q801713TalkTrigger = class("Q801713TalkTrigger", GadgetActorProxy)
Q801713TalkTrigger.defaultAlias = "Q801713TalkTrigger"
local Q8017ClientConfig = require("Quest/Client/Q8017ClientConfig")

local this
local subIDs = Q8017ClientConfig.SubIDs
local datas = Q8017ClientConfig.Datas
local npcs = Q8017ClientConfig.Npcs
local points = Q8017ClientConfig.Points

function Q801713TalkTrigger:OnPostDataPrepare()
    print("Q801713TalkTrigger - OnPostDataPrepare")
    this = self
end

function Q801713TalkTrigger:OnPostComponentPrepare()
    print("Q801713TalkTrigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 8017)
end

function Q801713TalkTrigger:TriggerIn()
    print("Q801713TalkTrigger - TriggerIn")
end

function Q801713TalkTrigger:PreTriggerIn()
    print("Q801713TalkTrigger - PreTriggerIn")
end

function Q801713TalkTrigger:LightUpTriggerIn()
    print("Q801713TalkTrigger - LightUpTriggerIn")
    actorMgr:GetActor("8017"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        if actorUtils.IsMalePlayer() then
            actorMgr:GetActor("8017"):CreateQuestNpc(quest, nil, nil, false, 0)
        else
            actorMgr:GetActor("8017"):RequestInteraction(npcs.Npc1025.alias, "", true)
        end

        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q801713TalkTrigger:TriggerOut()
    print("Q801713TalkTrigger - TriggerOut")
end

return Q801713TalkTrigger
