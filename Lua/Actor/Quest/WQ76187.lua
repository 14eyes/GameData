require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76187 = class("Quest76187", QuestActorProxy)
Quest76187.defaultAlias = "Quest76187"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76187:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76187:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7618701"] = self.OnSubStart7618701,
        ["7618702"] = self.OnSubStart7618702,
        ["7618703"] = self.OnSubStart7618703,
        ["7618704"] = self.OnSubStart7618704
    }
end

function Quest76187:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7618701"] = self.OnSubFinish7618701,
        ["7618702"] = self.OnSubFinish7618702,
        ["7618703"] = self.OnSubFinish7618703,
        ["7618704"] = self.OnSubFinish7618704
    }
end

function Quest76187:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7618702"] = self.OnSubFailed7618702, ["7618703"] = self.OnSubFailed7618703}
end

function Quest76187:Start()
    print("Start")
end

function Quest76187:OnDestroy()
    print("OnDestroy")
end

function Quest76187:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76187:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76187:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7618703N16923Trigger")
    this:ActorDestroy("Q7618701Trigger", 76187)
    this:SafeDestroyQuestNpc(npcs.Npc16923.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16924_1.alias, 3)
    this:RemoveLocalGadget(70711275, "11")
    this:RemoveLocalGadget(73167060, "12")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177010, "1")
    this:RecycleAllRes()
end

function Quest76187:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7618701Trigger", 76187)
end

function Quest76187:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7618701 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7618702 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest76187:ActorDestroy(arg1, arg2)
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

function Quest76187:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest76187:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76187:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76187:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 1636.621, y = 304.753, z = 9539.778}, 15, 73177007, 10000133, 7618702) then
        actorUtils.FinishQuestWithParam({false}, {7618702})
    else
        if this:GetSubQuestState(7618702) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest76187:OnSubStart7618701(arg1)
    print("OnSubStart7618701")
    actorMgr:CreateActorWithPos("Q7618701Trigger", "Actor/Gadget/Q7618701Trigger", 70900002, 0, points.Q7618701Trigger.pos, points.Q7618701Trigger.rot, true, false, 3, nil, 0, 76187)
end

function Quest76187:OnSubFinish7618701(arg1)
    print("OnSubFinish7618701")
end

function Quest76187:OnSubStart7618702(arg1)
    print("OnSubStart7618702")
    this:RepeatSitCheck()
end

function Quest76187:OnSubFinish7618702(arg1)
    print("OnSubFinish7618702")
end

function Quest76187:OnSubFailed7618702(arg1)
    print("OnSubFailed7618702")
    this:RecycleAllRes()
end

function Quest76187:OnSubStart7618703(arg1)
    print("OnSubStart7618703")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7618703, 0, 20, 0.5, npcs.Npc16923.id)
end

function Quest76187:OnSubFinish7618703(arg1)
    print("OnSubFinish7618703")
    this:NpcDestroyImmediately(3, npcs.Npc16923.alias)
end

function Quest76187:OnSubFailed7618703(arg1)
    print("OnSubFailed7618703")
    this:RecycleAllRes()
end

function Quest76187:OnSubStart7618704(arg1)
    print("OnSubStart7618704")
    this:CreateQuestNpc(arg1, npcs.Npc16923.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16923.alias, 76187):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16924_1.id, 0, false, 0)
    this:CreateLocalGadget(73167060, "12", {x = 1635.954, y = 305.527, z = 9539.923}, {x = 0, y = 268.428, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(70711275, "11", {x = 1636.717, y = 305.527, z = 9539.947}, {x = 0, y = 86.16, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 1635.265, y = 304.748, z = 9539.949}, {x = 0, y = 40, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177010, "1", {x = 1636.328, y = 304.752, z = 9539.93}, {x = 0, y = 84.926, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest76187:OnSubFinish7618704(arg1)
    print("OnSubFinish7618704")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc16923.alias)
        this:NpcDestroyImmediately(3, npcs.Npc16924_1.alias)
        this:RecycleAllRes()
    end)
end

return Quest76187
