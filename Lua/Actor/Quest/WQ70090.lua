require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70090 = class("Quest70090", QuestActorProxy)
Quest70090.defaultAlias = "Quest70090"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest70090:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70090:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7009001"] = self.OnSubStart7009001,
        ["7009002"] = self.OnSubStart7009002,
        ["7009003"] = self.OnSubStart7009003
    }
end

function Quest70090:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7009001"] = self.OnSubFinish7009001,
        ["7009002"] = self.OnSubFinish7009002,
        ["7009003"] = self.OnSubFinish7009003
    }
end

function Quest70090:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7009002"] = self.OnSubFailed7009002}
end

function Quest70090:Start()
    print("Start")
end

function Quest70090:OnDestroy()
    print("OnDestroy")
end

function Quest70090:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70090:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70090:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7009003N1018Trigger")
    this:ActorDestroy("Q7009001Trigger", 70090)
    this:SafeDestroyQuestNpc(npcs.Npc1018.alias, 3)
    this:RemoveLocalGadget(73177010, "1")
    this:RemoveLocalGadget(73177011, "2")
    this:RemoveLocalGadget(73177011, "3")
    this:RemoveLocalGadget(73177012, "10")
    this:RemoveLocalGadget(73177013, "9")
    this:RemoveLocalGadget(73177014, "7")
    this:RemoveLocalGadget(73177013, "8")
    this:RecycleAllRes()
end

function Quest70090:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7009001Trigger", 70090)
end

function Quest70090:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7009001 then
        this:SetQuestVarByMainId(1, 0)
    end

    if arg1 == 7009002 then
        this:ActionSafeCall(function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest70090:ActorDestroy(arg1, arg2)
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

function Quest70090:CheckAvatarSitEvent(arg1, arg2, arg3, arg4, arg5)
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

function Quest70090:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest70090:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest70090:RepeatSitCheck()
    if this:CheckAvatarSitEvent({x = 1206.078, y = 374.17, z = -789.829}, 30, 73177007, 10000133, 7009002) then
        actorUtils.FinishQuestWithParam({false}, {7009002})
    else
        if this:GetSubQuestState(7009002) == 2 then
            this:CallDelay(0.1, function(arg1)
                this:RepeatSitCheck()
            end)
        end
    end
end

function Quest70090:OnSubStart7009001(arg1)
    print("OnSubStart7009001")
    actorMgr:CreateActorWithPos("Q7009001Trigger", "Actor/Gadget/Q7009001Trigger", 70900002, 0, points.Q7009001Trigger.pos, points.Q7009001Trigger.rot, true, false, 3, nil, 0, 70090)
end

function Quest70090:OnSubFinish7009001(arg1)
    print("OnSubFinish7009001")
end

function Quest70090:OnSubStart7009002(arg1)
    print("OnSubStart7009002")
    this:RepeatSitCheck()
end

function Quest70090:OnSubFinish7009002(arg1)
    print("OnSubFinish7009002")
    this:ShowBlackScreenWithDialogText(0, 0.5, 0.5, nil, nil, nil, 0, false, true)
end

function Quest70090:OnSubFailed7009002(arg1)
    print("OnSubFailed7009002")
    this:RecycleAllRes()
end

function Quest70090:OnSubStart7009003(arg1)
    print("OnSubStart7009003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7009003, 0, 40, 0.5, npcs.Npc1018.id)
    this:CreateLocalGadget(73177010, "1", {x = 1199.911, y = 374.208, z = -792.654}, {x = 0, y = 330.354, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "2", {x = 1200.454, y = 374.214, z = -793.628}, {x = 0, y = 327.455, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177011, "3", {x = 1199.386, y = 374.215, z = -791.685}, {x = 0, y = 150.344, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177012, "10", {x = 1200.148, y = 374.986, z = -792.504}, {x = 0, y = 124.906, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "9", {x = 1200.095, y = 374.986, z = -793.005}, {x = 0, y = 332.636, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177014, "7", {x = 1199.803, y = 375.013, z = -792.266}, {x = 0, y = 335.446, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73177013, "8", {x = 1199.598, y = 374.986, z = -792.394}, {x = 0, y = 161.928, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest70090:OnSubFinish7009003(arg1)
    print("OnSubFinish7009003")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyImmediately(3, npcs.Npc1018.alias)
        this:RecycleAllRes()
    end)
end

return Quest70090
