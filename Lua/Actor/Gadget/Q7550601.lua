require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7550601 = class("Q7550601", GadgetActorProxy)
Q7550601.defaultAlias = "Q7550601"
local Q75506ClientConfig = require("Quest/Client/Q75506ClientConfig")

local this
local subIDs = Q75506ClientConfig.SubIDs
local datas = Q75506ClientConfig.Datas
local npcs = Q75506ClientConfig.Npcs
local points = Q75506ClientConfig.Points

function Q7550601:OnPostDataPrepare()
    print("Q7550601 - OnPostDataPrepare")
    this = self
end

function Q7550601:OnPostComponentPrepare()
    print("Q7550601 - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75506)
end

function Q7550601:TriggerIn()
    print("Q7550601 - TriggerIn")
    actorMgr:GetActor("75506"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorMgr:GetActor("75506"):CreateQuestNpcById(7550603, npcs.Npc1094.id, 0, false, 0)
        actorMgr:GetActor("75506"):RequestInteraction(npcs.Npc1095.alias, "", true)
    end, nil, nil, 0, false, true)

    this:DestroySelf()
end

function Q7550601:PreTriggerIn()
    print("Q7550601 - PreTriggerIn")
end

function Q7550601:LightUpTriggerIn()
    print("Q7550601 - LightUpTriggerIn")
end

function Q7550601:TriggerOut()
    print("Q7550601 - TriggerOut")
end

return Q7550601
