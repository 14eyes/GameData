require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q466trigger5 = class("Q466trigger5", GadgetActorProxy)
Q466trigger5.defaultAlias = "Q466trigger5"
local Q466ClientConfig = require("Quest/Client/Q466ClientConfig")

function Q466trigger5:OnPostDataPrepare() end

function Q466trigger5:OnPostComponentPrepare()
    self:AddComponentTrigger(60, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q466trigger5:TriggerIn() end

function Q466trigger5:TriggerOut()
    print("Out Q466trigger5")
    actorUtils.ShowMessage("\229\183\178\231\166\187\229\188\128\228\187\187\229\138\161\229\140\186\229\159\159")
    local actor = actorMgr:GetActor(Q466ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(true, nil)
    end

    self:DestroySelf()
end

return Q466trigger5
