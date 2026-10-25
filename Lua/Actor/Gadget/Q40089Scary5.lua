require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40089Scary5 = class("Q40089Scary5", GadgetActorProxy)
Q40089Scary5.defaultAlias = "Q40089Scary5"
local Q40089ClientConfig = require("Quest/Client/Q40089ClientConfig")

local this
local subIDs = Q40089ClientConfig.SubIDs
local npcs = Q40089ClientConfig.Npcs
local datas = Q40089ClientConfig.Datas

function Q40089Scary5:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q40089Scary5:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40089Scary5:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40089"):ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        actorUtils.FinishQuestID(false, 4008915)
        actorUtils.FinishQuestID(false, 4008916)
        actorUtils.FinishQuestID(false, 4008917)
        this:DestroySelf()
    end, nil, nil, 0, false, true)
end

function Q40089Scary5:TriggerOut()
    print("TriggerOut")
end

return Q40089Scary5
