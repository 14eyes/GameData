require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73356 = class("Quest73356", QuestActorProxy)
Quest73356.defaultAlias = "Quest73356"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest73356:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73356:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7335601"] = self.OnSubStart7335601,
        ["7335602"] = self.OnSubStart7335602,
        ["7335603"] = self.OnSubStart7335603,
        ["7335604"] = self.OnSubStart7335604
    }
end

function Quest73356:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7335601"] = self.OnSubFinish7335601,
        ["7335602"] = self.OnSubFinish7335602,
        ["7335603"] = self.OnSubFinish7335603,
        ["7335604"] = self.OnSubFinish7335604
    }
end

function Quest73356:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7335602"] = self.OnSubFailed7335602, ["7335603"] = self.OnSubFailed7335603}
end

function Quest73356:Start()
    print("Start")
end

function Quest73356:OnDestroy()
    print("OnDestroy")
end

function Quest73356:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73356:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73356:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7335603N1065Trigger")
    this:ActorDestroy("Q7335601Trigger", 73356)
    this:SafeDestroyQuestNpc(npcs.Npc1065.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22735.alias, 3)
    this:LightNotifyTo(npcs.Npc4020.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4021.alias, 0, true)
    this:RemoveLocalGadget(73177010, "1")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177012, "4")
    this:RemoveLocalGadget(73177013, "5")
    this:RemoveLocalGadget(73177013, "6")
    this:RecycleAllRes()
end

function Quest73356:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7335601Trigger", 73356)
end

function Quest73356:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7335601 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7335602 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest73356:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest73356:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
    if actorUtils.IsAvatarSit() == true then
        local avatarPos = actorUtils.GetAvatarPos()
        local n = arg1.x - avatarPos.x
        local v = arg1.y - avatarPos.y
        local n2 = arg1.z - avatarPos.z
        local n3 = math.sqrt(n ^ 2 + v ^ 2 + n2 ^ 2)
        print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- SitDistance \239\188\154" .. n3 .. "  maxR \239\188\154" .. arg2)
        if arg2 >= n3 then
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\228\189\141\231\189\174\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\233\128\154\232\191\135")
            if actorUtils.GetLocalAvatarSitEntityConfigId() == arg3 or arg3 == 0 then
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                if actorUtils.GetLocalAvatarConfigId() == arg4 or arg4 == 0 then
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4)
                    return true
                else
                    print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \232\167\146\232\137\178\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135\239\188\140\232\167\146\232\137\178ID\228\184\186\239\188\154" .. arg4 .. "  \232\166\129\230\177\130\231\154\132\232\167\146\232\137\178ID\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarConfigId())
                    return false
                end
            else
                print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\231\137\169\228\187\182\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \231\137\169\228\187\182\230\163\128\230\159\165\228\184\141\231\148\168\233\128\154\232\191\135\239\188\140\231\137\169\228\187\182id\228\184\186\239\188\154" .. actorUtils.GetLocalAvatarSitEntityConfigId() .. "  \232\166\129\230\177\130\231\137\169\228\187\182id\228\184\186\239\188\154" .. arg3)
                return false
            end
        else
            print("\227\128\144\230\156\168\229\129\182\228\186\186\230\150\135\239\188\154\232\167\146\232\137\178\230\163\128\230\159\165\227\128\145" .. arg5 .. "---- \228\189\141\231\189\174\230\163\128\230\159\165\228\184\141\233\128\154\232\191\135")
            return false
        end
    end
end

function Quest73356:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest73356:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest73356:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = -505.437, y = 222.723, z = 2788.328}, 15, 73177007, 10000133, 7335602) then
        actorUtils.FinishQuestWithParam({false}, {7335602})
    else
        if this:GetSubQuestState(7335602) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest73356:OnSubStart7335601(arg1)
    print("OnSubStart7335601")
    actorMgr:CreateActorWithPos("Q7335601Trigger", "Actor/Gadget/Q7335601Trigger", 70900002, 0, points.Q7335601Trigger.pos, points.Q7335601Trigger.rot, true, false, 3, nil, 0, 73356)
end

function Quest73356:OnSubFinish7335601(arg1)
    print("OnSubFinish7335601")
end

function Quest73356:OnSubStart7335602(arg1)
    print("OnSubStart7335602")
    this:NotifyTo(npcs.Npc4020.alias, 1, true)
    this:NotifyTo(npcs.Npc4021.alias, 1, true)
    this:RepeatSitCheck()
end

function Quest73356:OnSubFinish7335602(arg1)
    print("OnSubFinish7335602")
end

function Quest73356:OnSubFailed7335602(arg1)
    print("OnSubFailed7335602")
    this:RecycleAllRes()
end

function Quest73356:OnSubStart7335603(arg1)
    print("OnSubStart7335603")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7335603, 0, 18, 0.5, npcs.Npc1065.id)
    this:NotifyTo(npcs.Npc4020.alias, 1, true)
    this:NotifyTo(npcs.Npc4021.alias, 1, true)
end

function Quest73356:OnSubFinish7335603(arg1)
    print("OnSubFinish7335603")
    this:NpcDestroyImmediately(3, npcs.Npc1065.alias)
end

function Quest73356:OnSubFailed7335603(arg1)
    print("OnSubFailed7335603")
    this:RecycleAllRes()
end

function Quest73356:OnSubStart7335604(arg1)
    print("OnSubStart7335604")
    this:NotifyTo(npcs.Npc4021.alias, 1, true)
    this:NotifyTo(npcs.Npc4020.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc22735.id, 0, false, 0)
    this:CreateLocalGadget(73177010, "1", {x = -505.642, y = 222.723, z = 2786.839}, {x = 0, y = 11.94, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = -505.858, y = 222.723, z = 2785.818}, {x = 0, y = 11.94, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "3", {x = -505.528, y = 222.723, z = 2787.937}, {x = 0, y = 193.075, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "4", {x = -505.354, y = 223.501, z = 2786.666}, {x = 0, y = 239.156, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "5", {x = -505.624, y = 223.501, z = 2786.408}, {x = 0, y = 79.635, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "6", {x = -505.674, y = 223.501, z = 2787.308}, {x = 0, y = 240.133, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest73356:OnSubFinish7335604(arg1)
    print("OnSubFinish7335604")
    this:ActionSafeCall(function(arg1)
        this:LightNotifyTo(npcs.Npc4021.alias, 0, true)
        this:LightNotifyTo(npcs.Npc4020.alias, 0, true)
        this:NpcDestroyImmediately(3, npcs.Npc22735.alias)
        this:RecycleAllRes()
    end)
end

return Quest73356
