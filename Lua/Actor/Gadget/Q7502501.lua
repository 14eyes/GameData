require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7502501 = class("Q7502501", GadgetActorProxy)
Q7502501.defaultAlias = "Q7502501"
local Q75025ClientConfig = require("Quest/Client/Q75025ClientConfig")

local this
local subIDs = Q75025ClientConfig.SubIDs
local datas = Q75025ClientConfig.Datas
local npcs = Q75025ClientConfig.Npcs
local points = Q75025ClientConfig.Points

function Q7502501:OnPostDataPrepare()
    print("Q7502501 - OnPostDataPrepare")
    this = self
end

function Q7502501:OnPostComponentPrepare()
    print("Q7502501 - OnPostComponentPrepare")
    this:AddComponentTrigger(24, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75025)
end

function Q7502501:TriggerIn()
    print("Q7502501 - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("75025"):EnterSceneLookCamera({x = -1181.614, y = 180.704, z = 8237.94}, 0, 2, false, false)
    actorMgr:GetActor("75025"):CreateQuestNpcById(7502501, npcs.Npc21460.id, 0, false, 0)
    actorMgr:GetActor("75025"):CallDelayByQuest("7502501", 2, function(arg1)
        actorMgr:GetActor("75025"):RequestInteraction(npcs.Npc21460.alias, "", true)
    end)

    globalActor:StopLocalAvatar()
end

function Q7502501:PreTriggerIn()
    print("Q7502501 - PreTriggerIn")
end

function Q7502501:LightUpTriggerIn()
    print("Q7502501 - LightUpTriggerIn")
end

function Q7502501:TriggerOut()
    print("Q7502501 - TriggerOut")
end

return Q7502501
